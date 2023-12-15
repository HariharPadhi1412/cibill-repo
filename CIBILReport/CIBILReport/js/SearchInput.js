////function SearchResult() {

////    var endpoint = "SignUp.aspx/GetData";
////    //var endpoint = "CibilPortal.master/GetData";
////    var InputData = document.getElementById("MyInput").value;

////    //fetch(endpoint, {
////    //    method: "POST",
////    //    headers: {
////    //        "Content-Type": "application/json"
////    //    },
////    //    body: JSON.stringify({ AccountNumber : InputData })
////    //})
////    //    .then(response => response.json())
////    //    .then(responseData => {
////    //        if (responseData.status != "") {
////    //            if (responseData.d === "Success") {
////    //                window.location.href = "../DashBoard/DashBoard.aspx", "_blank";
////    //            } else {
////    //                document.getElementById("lblLoginMessage").innerHTML = (responseData.status);
////    //            }
////    //        }
////    //    })
////    //    .catch(error => {
////    //        console.error("Error:", error);
////    //    });

////    //var xhr = new XMLHttpRequest();
////    //xhr.open('POST', endpoint, true);
////    //xhr.setRequestHeader('Content-Type', 'application/json');
////    //xhr.onreadystatechange = function () {
////    //    if (xhr.readyState === 4) {
////    //        if (xhr.status === 200) {
////    //            var data = JSON.parse(xhr.responseText);
////    //            console.log(data.d);
////    //        } else {
////    //            console.error("Error:", xhr.statusText);
////    //        }
////    //    }
////    //};
////    //xhr.send(JSON.stringify({ AccountNumber : InputData }));

////}


////$(document).ready(function () {
////    $('#SearchBtn').click(function () {
////        $.ajax({
////            url: 'CibilPortal.master/GetData', // Replace with your actual URL
////            type: 'POST',
////            contentType: 'application/json',
////            data: JSON.stringify({ AccountNumber: 'your_string' }),
////            success: function (response) {
////                // Handle response from C# function
////                console.log(response.d); // Assuming your C# function returns a property "d"
////            },
////            error: function (xhr, error) {
////                console.error(error);
////            }
////        });
////    });
////});



//////async function processString(myString) {
//////    try {
//////        const response = await fetch('CibilPortal.master/GetData', {
//////            method: 'POST',
//////            headers: {
//////                'Content-Type': 'application/json',
//////            },
//////            body: JSON.stringify({ inputData: myString }),
//////        });
//////        if (!response.ok) {
//////            throw new Error(`Error: ${response.status}`);
//////        }
//////        const data = await response.json();
//////        console.log(data.d);
//////    } catch (error) {
//////        console.error("Error:", error);
//////    }
//////}

//////processString(myString);