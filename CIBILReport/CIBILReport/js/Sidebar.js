// Function for Sidebar
$(document).ready(function () {
    //jquery for toggle sub menus
    $('.sub-btn').click(function () {
        $(this).next('.sub-menu').slideToggle();
        $(this).find('.dropdown').toggleClass('rotate');
    });

    //jquery for expand and collapse the sidebar
    $('.menu-btn').click(function () {
        $('.side-bar').addClass('active');
        $('.menu-btn').css("visibility", "hidden");
    });

    $('.close-btn').click(function () {
        $('.side-bar').removeClass('active');
        $('.menu-btn').css("visibility", "visible");
    });
});




function SearchResult() {

    //var endpoint = "SignUp.aspx/GetData";
    var endpoint = "CibilPortal.master/GetData";
    var InputData = document.getElementById("MyInput").value;

    fetch(endpoint, {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({ AccountNumber : InputData })
    })
        .then(response => response.json())
        .then(responseData => {
            if (responseData.status != "") {
                if (responseData.d === "Success") {
                    window.location.href = "../DashBoard/DashBoard.aspx", "_blank";
                } else {
                    document.getElementById("lblLoginMessage").innerHTML = (responseData.status);
                }
            }
        })
        .catch(error => {
            console.error("Error:", error);
        });
}

function UserPage()
{
    var data = "";
    window.location.href = "../User/User.aspx", "_blank";
}