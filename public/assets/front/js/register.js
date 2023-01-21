window.onload=function(){
    document.getElementById("fname").addEventListener("blur",fname)
    document.getElementById("lname").addEventListener("blur",lname)
    document.getElementById("email").addEventListener("blur",email)
    document.getElementById("password").addEventListener("blur",password)
    document.getElementById("password-confirm").addEventListener("blur",confirmpassword)
}

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

function fname(){
    var ime = document.getElementById("fname").value
    var pattern = /^[A-ZČĆŽŠĐ][a-zčćžš]{1,19}$/
    var id= "nameError"
    var element=document.getElementById(id);


    if(pattern.test(ime)){
        document.getElementById("fname").classList.add("is-valid")
        document.getElementById("fname").classList.remove("is-invalid")

        if(element!=null)
            removeError(id)
        return true;
    }
    else{
        document.getElementById("fname").classList.remove("is-valid")
        document.getElementById("fname").classList.add("is-invalid")
        parent=document.getElementById("fname").parentElement;

        if(element==null){
            addError(parent, id, "Please provide a valid first name, must be between 2-12 characters")
        }
        return false;
    }
}

function lname(){
    var ime = document.getElementById("lname").value
    var pattern = /^[A-ZČĆŽŠĐ][a-zčćžš]{1,39}$/
    var id= "lastNameError"
    var element=document.getElementById(id);

    if(pattern.test(ime)){
        document.getElementById("lname").classList.add("is-valid")
        document.getElementById("lname").classList.remove("is-invalid")

        if(element!=null)
            removeError(id)
        return true;
    }
    else{
        document.getElementById("lname").classList.remove("is-valid")
        document.getElementById("lname").classList.add("is-invalid")
        parent=document.getElementById("lname").parentElement;

        if(element==null){
            addError(parent, id, "Please provide a valid last name, must be between 2-12 characters")
        }
        return false;
    }
}

function email(){
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
            addError(parent, id, "Please provide a valid email address, e.g. name@email.com")
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

//
// function confirmpassword(){
//     var pass = document.getElementById("password").value
//     var conf = document.getElementById("password-confirm").value
//     var id= "confError"
//     var element=document.getElementById(id);
//
//     if(pass == conf){
//         document.getElementById("password-confirm").classList.add("is-valid")
//         document.getElementById("password-confirm").classList.remove("is-invalid")
//
//         if(element!=null)
//             removeError(id)
//         return true;
//     }
//     else{
//         document.getElementById("password-confirm").classList.remove("is-valid")
//         document.getElementById("password-confirm").classList.add("is-invalid")
//         parent=document.getElementById("password-confirm").parentElement;
//
//         if(element==null){
//             addError(parent, id, "The passwords don't match")
//         }
//         return false;
//     }
// }

function formCheck(){
    if(email() && lname() && fname() && password() && confirmpassword())
        return true;
    return false;
}
