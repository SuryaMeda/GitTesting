
function registation() {

    var name, nameExp, dob, group, phone, phoneExp, country, state, dist, city, email, emaliExp, pwd, Cpwd, gender, gender1, lang, lang1, lang2, addres, blood, blood1, photo;

    name = document.getElementById("TextBox1").value;
    nameExp = /^[a-zA-Z]+$/; alert("hai");
    dob = document.getElementById("TextBox2").value;
    group = document.getElementById("DropDownList1").value;
    phone = document.getElementById("TextBox3").value;
    phoneExp = /^[0-9]+$/;
    country = document.getElementById("DropDownList2").value;
    state = document.getElementById("DropDownList3").value;
    dist = document.getElementById("DropDownList4").value;
    city = document.getElementById("DropDownList5").value;
    email = document.getElementById("TextBox4").value;
    emaliExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
    pwd = document.getElementById("TextBox5").value;
    Cpwd = document.getElementById("TextBox6").value;
    gender = document.getElementById("RadioButton1").value;
    gender1 = document.getElementById("RadioButton2").value;
    lang = document.getElementById("CheckBox1").value;
    lang1 = document.getElementById("CheckBox2").value;
    lang2 = document.getElementById("CheckBox3").value;
    addres = document.getElementById("TextBox7").value;
    blood = document.getElementById("RadioButton3").value;
    blood1 = document.getElementById("RadioButton4").value;

    if (name == '' && dob == '' && group == 0 && phone == '' && country == 0 && state == 0 && dist == 0 && city == 0 && email == '' && pwd == '' && Cpwd == '' && gender == '' && gender1 == '' && lang == '' && lang1 == '' && lang2 == '' && addres == '' && blood == '' && blood1 == '') {
        alert("Enter All Fields");
        return false;
    }
    if (name == '') {
        alert("Please Enter FullName.");
        return false;
    }
    if (name != '') {
        if (!name.match(nameExp)) {
            alert("please Enter Only Alphabets");
            return false;
        }
    }
    if (dob == '') {
        alert("Please Select Date Of Birth.");
        return false;
    }
    if (group == 0) {
        alert("Please Select Blood Group.");
        return false;
    }
    return ture;
}