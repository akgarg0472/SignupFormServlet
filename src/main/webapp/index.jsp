<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Signup Form</title>
</head>

<body>
<div class="container">
    <form name="signupForm" method="post" action="submit-data" onsubmit="submitForm(event)">
        <h2 id="signup-form-heading">Signup Form</h2>
        <table id="signup-table">
            <tr>
                <td>
                    <label for="user-name">Enter your name</label>
                </td>
                <td>
                    <input type="text" id="user-name" name="user-name" placeholder="Enter your name">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="user-id">Enter user id</label>
                </td>
                <td>
                    <input type="text" id="user-id" name="user-id" placeholder="Enter user id">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="user-password">Enter password</label>
                </td>
                <td>
                    <input type="password" id="user-password" name="user-password" placeholder="Enter password">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="user-email">Enter email id</label>
                </td>
                <td>
                    <input type="email" id="user-email" name="user-email" placeholder="Enter email">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="user-contact">Enter contact#</label>
                </td>
                <td>
                    <input type="tel" id="user-contact" name="user-contact" placeholder="Enter Phone #"
                           pattern="[0-9]{10}" title="Phone number should be 10 digit long" minlength="10"
                           maxlength="10">
                </td>
            </tr>
        </table>
        <input id="t&cCheckBox" type="checkbox" name="t&c" value="accepted">I agree to all T&C
        <div class="buttons" style="margin-top: 5px;">
            <button id="formSubmitButton" name="formSubmitButton" type="submit">
                Signup
            </button>
            <button name="formResetButton" type="reset">Reset</button>
        </div>
    </form>
</div>

<!-- JS to check if terms & conditions box is ticked or not-->
<script type="text/javascript">
    function submitForm(event) {
        let check = document.getElementById("t&cCheckBox");
        if (check.checked) {
            console.log("T&C accepted");
        } else {
            console.log("T&C not accepted");
            alert("Please accept T&C before submitting");
            event.preventDefault();
        }
    }
</script>
</body>

</html>