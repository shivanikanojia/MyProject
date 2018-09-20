$(function() {
	$.fn.addmore = function(options) {
		var moreElement = this, singlePreSelectedValue = '', selectedValue = [], defaultOption = {
			addButton : 'add more',
			removeText : 'Remote',
			selectBoxDuplicate : true,
			avoidDuplicationSelection : function(e) {
				var o = e;
				if ($.inArray($(o).val(), selectedValue) != -1) {
					$(o).val(singlePreSelectedValue);
					alert('Value already selected.');
				} else {
					var hasSelectValue = true;
					
					$.each($('.removeDuplication'), function(i, v) {
						if ($(this).val() == 'select') {
							hasSelectValue = false;
							return false;
						}

					});

				}
			},
			prevSelectedValue : function(e) {
				var o = e;
				selectedValue = [];
				$.each($('.removeDuplication'), function(i, v) {
					if ($(this).val() != 'select') {
						selectedValue.push($(this).val());
					}
				});
				singlePreSelectedValue = $(o).val();
			}
		}
		defaultOption = $.extend(true, defaultOption, options);

		$(this).find('select').prepend(
				'<option value="select" selected>Select</option>');
		$(moreElement).after(
				'<a href="javascript:void(0)" data-id="more">'
						+ defaultOption.addText + '</a>');
		$('[data-id="more"]')
				.click(
						function() {

							var dataMore = this, removeDuplication = [];
							$(dataMore)
									.before(
											$(moreElement)
													.clone()
													.find('.input')
													.not('input[type="submit"]')
													.val('')
													.end()
													.end()
													.find(
															'select.removeDuplication')
													.focus(
															function() {
																if (!defaultOption.selectBoxDuplicate) {
																	defaultOption
																			.prevSelectedValue(this);
																}
															})
													.change(
															function() {
																if (!defaultOption.selectBoxDuplicate) {
																	defaultOption
																			.avoidDuplicationSelection(this);
																}
															})
													.end()
													.append(
															function() {
																return $(
																		'<a href="javascript:void(0)" data-id="remove"> '
																				+ defaultOption.removeText
																				+ '</a>')
																		.click(
																				function() {
																					$(
																							this)
																							.parent()
																							.remove();
																				});
															}));
							if (!defaultOption.selectBoxDuplicate) {
								$.each($('.removeDuplication'), function(i, v) {
									if ($(this).val() != 'select') {
										removeDuplication.push($(this).val());
									}
								});
								$.each(removeDuplication, function(i, v) {
									$('.removeDuplication').last().find(
											'option[value="'
													+ removeDuplication[i]
													+ '"]').remove();
								});
							}
						});
		$('.removeDuplication').focus(function(e) {
			defaultOption.prevSelectedValue(this);
		}).change(function() {
			defaultOption.avoidDuplicationSelection(this);
		});
		return this;
	}

	$('#addMore').addmore({
		addText : 'Add',
		removeText : 'Remove',
		selectBoxDuplicate : false
	});
});
