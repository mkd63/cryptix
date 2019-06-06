// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function () {
    $('#reg_form').validate({
      debug: false,
      rules: {
        	"user_detail[name]": { required: true, minlength: 2},
        	"user_detail[password]": {
        		required: true,
        		minlength: 5,
        		atLeastOneLowercaseLetter: true,
              atLeastOneUppercaseLetter: true,
              atLeastOneNumber: true,
              atLeastOneSymbol: true
          },
        	"user_detail[password_confirmation]": {
            required:true,
            minlength: 6,
            maxlength: 32,
            equalTo: '#password-field'
     		},
     		"user_detail[email]":{
     			required: true,
     			email:true,
     			emailid: true
     		},
     		"user_detail[contactno]":{
     			digits:true
     		},
        "user_detail[username]":{
          required:true
        }
      },
   		messages: {
          "user_detail[firstname]": {
          	required: "First Name can't be blank",
          	minlength: "First name should contain atleast 2 characters"
          },
          "user_detail[password]": {
          	required: "Password can't be blank",
        		minlength: "Password is too short",
        		atLeastOneLowercaseLetter: "Your Password should include atleast one lowercase character",
              atLeastOneUppercaseLetter: "Your Password should include atleast one uppercase character",
              atLeastOneNumber: "Your Password should include atleast one digit",
              atLeastOneSymbol: "Your Password should include atleast one special character"
          },
          "user_detail[email]": {
          	requied: "Email can't be blank",
          	emailid: "You must enter a valid Email",
          	email: "You must enter a valid Email"
          },
          "user_detail[contactno]": "Your number should include digits only",
          "user_detail[password_confirmation":{
          	required:"Password must be confirmed",
          	equalTo: "Your passwords should match"
          },
          "user_detail[username]":"UserName can't be blank."
      },
      errorPlacement: function(label, element) {
          label.addClass('error');
          label.insertAfter(element[0].parentElement);
      },

      wrapper: 'span'
  })
});
/**
 * Custom validator for contains at least one lower-case letter
 */
$.validator.addMethod("atLeastOneLowercaseLetter", function (value, element) {
    return this.optional(element) || /[a-z]+/.test(value);
}, "Must have at least one lowercase letter");

/**
 * Custom validator for contains at least one upper-case letter.
 */
$.validator.addMethod("atLeastOneUppercaseLetter", function (value, element) {
    return this.optional(element) || /[A-Z]+/.test(value);
}, "Must have at least one uppercase letter");

/**
 * Custom validator for contains at least one number.
 */
$.validator.addMethod("atLeastOneNumber", function (value, element) {
    return this.optional(element) || /[0-9]+/.test(value);
}, "Must have at least one number");

/**
 * Custom validator for contains at least one symbol.
 */

$.validator.addMethod("atLeastOneSymbol", function (value, element) {
    return this.optional(element) || /[!@#$%^&*()]+/.test(value);
}, "Must have at least one symbol");

$.validator.addMethod("emailid", function (value, element) {
    return this.optional(element) || /[.@]+/.test(value);
}, "Must have at least one symbol");

$.validator.addMethod("onlychars", function (value) {
        return /^[a-zA-Z]+$/.test(value) // has only allowed chars letter
    }, "The password contains non-admitted characters");
