// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
	var isDropdownOpen = false;
	var initially = true;
	$('.dropdown').click(function() {
		if (initially) {
			isDropdownOpen = true;
			initially = false;
			initialPaddingHandler();
		} else {
			handleNavBarToBodyPadding();
		}
	});

	var initialPaddingHandler = function() {
		if (isDropdownOpen) {
			if ($(window).width() < 768) {
				$('body').addClass('dropdownIsOpenPadding');
			} else {
				//dont add padding
			}
		}
	}

	var handleNavBarToBodyPadding = function() {
		if (isDropdownOpen) {
			//navbar is open and about to close, so remove the padding if it exists
			if ($('body').hasClass('dropdownIsOpenPadding')) {
				$('body').removeClass('dropdownIsOpenPadding');
			}
		} else {
			//navbar is not open and about to open, so add the padding if needed
			if ($(window).width() < 768) {
				$('body').addClass('dropdownIsOpenPadding');
			} else {
				//dont add padding
			}
		}
		toggleIsDropDownOpen();
	};

	var toggleIsDropDownOpen = function() {
		isDropdownOpen = !isDropdownOpen;
	}

	$(window).resize(function() {
		//if user resizes browser to greater than 768 AND the dropdown padding is added, then remove the padding
		if (($(window).width() >= 768) && ($('body').hasClass('dropdownIsOpenPadding'))) {
			$('body').removeClass('dropdownIsOpenPadding');
		};
		//if user resizes browser to less than 768 AND dropdown is open AND dropdown padding is not added, then add the padding
		if ($(window).width() < 768) {
			if (isDropdownOpen) {
				if (!($('body').hasClass('dropdownIsOpenPadding'))) {
					$('body').addClass('dropdownIsOpenPadding');
				}
			}
		}
	});
});






