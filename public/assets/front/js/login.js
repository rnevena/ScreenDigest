$(document).ready( function(){
    $("#email").blur(Email);
    $("#password").blur(password);
});

function addError(parent, errorID, message) {
    var errorDIV = document.createElement("div");
    errorDIV.setAttribute('id',errorID)
    errorDIV.setAttribute('class','invalid-feedback')
    errorDIV.innerHTML = message;
    parent.appendChild(errorDIV);
}

function removeError(errorID) {
    var element = document.getElementById(errorID);
    element.parentNode.removeChild(element);
}

function Email(){
    var email = document.getElementById("email").value
    var pattern = /^\S+@\S+\.\S+$/
    var id= "emailError"
    var element=document.getElementById(id);

    if(pattern.test(email)){
        document.getElementById("email").classList.add("is-valid")
        document.getElementById("email").classList.remove("is-invalid")

        if(element!=null)
            removeError(id)

        return true;

    }
    else{
        document.getElementById("email").classList.remove("is-valid")
        document.getElementById("email").classList.add("is-invalid")
        parent=document.getElementById("email").parentElement;

        if(element==null){
            addError(parent, id, "Please provide a valid email address, e.g. janedoe@email.com")
        }
        return false;
    }
}


function password(){
    var pass = document.getElementById("password").value
    var pattern = /^.{8,40}$/
    var id= "passwordError"
    var element=document.getElementById(id);

    if(pattern.test(pass)){
        document.getElementById("password").classList.add("is-valid")
        document.getElementById("password").classList.remove("is-invalid")

        if(element!=null)
            removeError(id)
        return true;
    }
    else{
        document.getElementById("password").classList.remove("is-valid")
        document.getElementById("password").classList.add("is-invalid")
        parent=document.getElementById("password").parentElement;

        if(element==null){
            addError(parent, id, "Please provide a valid password, must be at least 8 characters")
        }
        return false;
    }
}

function formCheck(){
    if(Email() && password())
        return true;
    return false;
}
