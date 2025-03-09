<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="Online_Test.Exam" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET Test - MCQs</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-image: url('pics/image8.jpg'); 
            background-position: center;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); 
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            font-size: 36px;
            color: #FF6347;
            margin-bottom: 20px;
        }
       
        .question-container {
            margin-bottom: 30px;
        }
        .question {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #2E8B57;
        }
        .answers {
            margin-left: 20px;
        }
        .answers input[type="radio"] {
            margin-right: 10px;
        }
        .submit-button {
            display: block;
            margin: 30px auto;
            padding: 10px 20px;
            background-color: #FF6347;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
        }
        .submit-button:hover {
            background-color: #e55347;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }

        .timer {
            font-size: 20px;
            font-weight: bold;
            color: #FF6347;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            
            <div id="timer" class="timer">Time remaining: 5:00</div>
            
            <h2>ASP.NET & C# MCQ Test</h2>

            <div class="question-container">
                <label class="question">1. What is the difference between `ref` and `out` parameters in C#?</label>
                <div class="answers">
                    <asp:RadioButtonList ID="q1" runat="server">
                        <asp:ListItem Text="A) `ref` requires initialization before passing, while `out` does not." Value="A"></asp:ListItem>
                        <asp:ListItem Text="B) `ref` is used for returning values, while `out` is used for passing input." Value="B"></asp:ListItem>
                        <asp:ListItem Text="C) `ref` can be assigned multiple times, while `out` can only be assigned once." Value="C"></asp:ListItem>
                        <asp:ListItem Text="D) `ref` is for passing reference types, while `out` is for value types." Value="D"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>

           <div class="question-container">
                <label class="question">2. What is a delegate in C#?</label>
                <div class="answers">
                    <asp:RadioButtonList ID="q2" runat="server">
                        <asp:ListItem Text="A) A delegate is a class that holds methods." Value="A"></asp:ListItem>
                        <asp:ListItem Text="B) A delegate is a reference type that encapsulates a method." Value="B"></asp:ListItem>
                        <asp:ListItem Text="C) A delegate is a collection of objects." Value="C"></asp:ListItem>
                        <asp:ListItem Text="D) A delegate is a keyword used for managing events." Value="D"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>

        
 <div class="question-container">
     <label class="question">3. What is the purpose of the `using` statement in C#?</label>
     <div class="answers">
         <asp:RadioButtonList ID="q3" runat="server">
             <asp:ListItem Text="A) To declare global variables." Value="A"></asp:ListItem>
             <asp:ListItem Text="B) To include external libraries in the project." Value="B"></asp:ListItem>
             <asp:ListItem Text="C) To automatically dispose of objects that implement the `IDisposable` interface." Value="C"></asp:ListItem>
             <asp:ListItem Text="D) To define namespaces for classes." Value="D"></asp:ListItem>
         </asp:RadioButtonList>
     </div>
 </div>

 
 <div class="question-container">
     <label class="question">4. What is LINQ in C#?</label>
     <div class="answers">
         <asp:RadioButtonList ID="q4" runat="server">
             <asp:ListItem Text="A) A tool for compiling code." Value="A"></asp:ListItem>
             <asp:ListItem Text="B) A query language for databases only." Value="B"></asp:ListItem>
             <asp:ListItem Text="C) A set of methods for querying data collections in a readable manner." Value="C"></asp:ListItem>
             <asp:ListItem Text="D) A method for managing memory." Value="D"></asp:ListItem>
         </asp:RadioButtonList>
     </div>
 </div>

 
 <div class="question-container">
     <label class="question">5. What are the access modifiers in C#?</label>
     <div class="answers">
         <asp:RadioButtonList ID="q5" runat="server">
             <asp:ListItem Text="A) `public`, `private`, `protected`, `internal`, and `private internal`." Value="A"></asp:ListItem>
             <asp:ListItem Text="B) `private`, `protected`, `internal`, and `readonly`." Value="B"></asp:ListItem>
             <asp:ListItem Text="C) `public`, `private`, `protected`, and `internal`." Value="C"></asp:ListItem>
             <asp:ListItem Text="D) `read-only`, `write-only`, `internal`, and `external`." Value="D"></asp:ListItem>
         </asp:RadioButtonList>
     </div>
 </div>

 
 <div class="question-container">
     <label class="question">6. What is the difference between ASP.NET WebForms and ASP.NET MVC?</label>
     <div class="answers">
         <asp:RadioButtonList ID="q6" runat="server">
             <asp:ListItem Text="A) WebForms uses the Model-View-Controller design pattern, while MVC is event-driven." Value="A"></asp:ListItem>
             <asp:ListItem Text="B) WebForms has automatic event handling, while MVC gives developers more control over HTML rendering." Value="B"></asp:ListItem>
             <asp:ListItem Text="C) MVC is a proprietary framework of Microsoft, while WebForms is open-source." Value="C"></asp:ListItem>
             <asp:ListItem Text="D) There is no difference between WebForms and MVC." Value="D"></asp:ListItem>
         </asp:RadioButtonList>
     </div>
 </div>

 <div class="question-container">
     <label class="question">7. What is the purpose of the `Global.asax` file in ASP.NET?</label>
     <div class="answers">
         <asp:RadioButtonList ID="q7" runat="server">
             <asp:ListItem Text="A) To store database connection strings." Value="A"></asp:ListItem>
             <asp:ListItem Text="B) To handle application-level events, such as `Application_Start` and `Session_End`." Value="B"></asp:ListItem>
             <asp:ListItem Text="C) To configure routing for MVC." Value="C"></asp:ListItem>
             <asp:ListItem Text="D) To handle session state configuration." Value="D"></asp:ListItem>
         </asp:RadioButtonList>
     </div>
 </div>


 <div class="question-container">
     <label class="question">8. What is ViewState in ASP.NET?</label>
     <div class="answers">
         <asp:RadioButtonList ID="q8" runat="server">
             <asp:ListItem Text="A) A mechanism for storing session data on the client side." Value="A"></asp:ListItem>
             <asp:ListItem Text="B) A server-side object used to maintain page data between postbacks." Value="B"></asp:ListItem>
             <asp:ListItem Text="C) A method to encrypt session variables." Value="C"></asp:ListItem>
             <asp:ListItem Text="D) A feature for managing authentication." Value="D"></asp:ListItem>
         </asp:RadioButtonList>
     </div>
 </div>

 <div class="question-container">
     <label class="question">9. What is the role of `HttpRequest` and `HttpResponse` in ASP.NET?</label>
     <div class="answers">
         <asp:RadioButtonList ID="q9" runat="server">
             <asp:ListItem Text="A) `HttpRequest` is used to store session information, while `HttpResponse` handles security." Value="A"></asp:ListItem>
             <asp:ListItem Text="B) `HttpRequest` represents the client’s request, and `HttpResponse` represents the server’s response." Value="B"></asp:ListItem>
             <asp:ListItem Text="C) `HttpRequest` is used to send data to the server, while `HttpResponse` is used to send data to the client." Value="C"></asp:ListItem>
             <asp:ListItem Text="D) `HttpRequest` manages cookies, and `HttpResponse` manages session state." Value="D"></asp:ListItem>
         </asp:RadioButtonList>
     </div>
 </div>


 <div class="question-container">
     <label class="question">10. What is the difference between `Session` and `Cookies` in ASP.NET?</label>
     <div class="answers">
         <asp:RadioButtonList ID="q10" runat="server">
             <asp:ListItem Text="A) `Session` stores data on the client, while `Cookies` store data on the server." Value="A"></asp:ListItem>
             <asp:ListItem Text="B) `Session` is for server-side data storage, while `Cookies` store data on the client-side." Value="B"></asp:ListItem>
             <asp:ListItem Text="C) `Session` is a persistent storage solution, while `Cookies` are used for authentication only." Value="C"></asp:ListItem>
             <asp:ListItem Text="D) There is no difference between `Session` and `Cookies`." Value="D"></asp:ListItem>
         </asp:RadioButtonList>
     </div>
 </div>

            <asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="submit-button" OnClick="SubmitButton_Click" />
            
            <div class="footer">
                <p>&copy; 2025 Online Test. All Rights Reserved.</p>
            </div>
        </div>
    </form>

    <script type="text/javascript">
        
        var countDownDate = new Date().getTime() + 5 * 60 * 1000;

       
        var x = setInterval(function () {
            var now = new Date().getTime();
            var distance = countDownDate - now;

           
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);

           
            document.getElementById("timer").innerHTML = "Time remaining: " + minutes + ":" + (seconds < 10 ? "0" : "") + seconds;

            
            if (distance < 0) {
                clearInterval(x);
                document.getElementById("timer").innerHTML = "EXPIRED";

                document.getElementById("form1").submit(); 

            }
        }, 1000);
    </script>
</body>
</html>
