function loginSubmit() {
    var errormsg = "";

    if (document.getElementById("txtUserName").value == "") {
        errormsg += "Username is required!\n";
        document.getElementById("txtUserName").focus();
    }
    if (document.getElementById("txtPassword").value == "") {
        if (errormsg == "")
            document.getElementById("txtPassword").focus();

        errormsg += "Password is required!";
    }
    if (errormsg != "") {
        document.getElementById("lblLoginMessage").innerHTML = (errormsg);
        return;
    }

    var endpoint = "SignUp.aspx/Login";

    const data = {
        username: document.getElementById("txtUserName").value,
        password: document.getElementById("txtPassword").value
    };

    fetch(endpoint, {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(responseData => {
            if (responseData.status != "") {
                if (responseData.d === "Success") {
                    window.location.href = "../DashBoard/DashBoard.aspx", "_blank";
                } else {
                    document.getElementById("lblLoginMessage").innerHTML = (responseData.status );
                }
            }
        })
        .catch(error => {
            console.error("Error:", error);
        });

}

window.onload = function () {
    var elem = document.getElementById("txtPassword");
    elem.onkeyup = function (e) {
        if (e.keyCode == 13) {
            loginSubmit();
        }
    }
}