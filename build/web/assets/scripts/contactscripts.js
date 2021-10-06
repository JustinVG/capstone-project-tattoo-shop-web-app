/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validateform() {
    var artist = document.getElementById('artistname').value;
    var name = document.getElementById('name').value;
    var mobile = document.getElementById('subject').value;
    var mail = document.getElementById('mail').value;
    var body = document.getElementById('body').value;

    if (artist == null || artist == "") {
        alert("Please select artist");
        return false;
    }
    if (name == null || name == "") {
        alert("Name can't be blank");
        return false;
    }
// Validate mobile number
    if (mobile == "" || mobile == null) {
        alert("Please enter your mobile number");
    } else {
        var regex = /^[1-9]\d{9}$/;
        if (regex.test(mobile) === false) {
            alert("Please enter a valid 10 digit mobile number");
        } else {
            printError("mobileErr", "");
            mobileErr = false;
        }
    }
    if (mail == "") {
        alert("Please enter your email address");
    } else {
        // Regular expression for basic email validation
        var regex = /^\S+@\S+\.\S+$/;
        if (regex.test(mail) === false) {
            alert("Please enter a valid email address");
        } else {
            printError("emailErr", "");
            emailErr = false;
        }
    }
    if (body == null || body == "") {
        alert("Please enter your message");
        return false;
    }
}
