<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

// Check if email, adults, and kids are set
if (isset($_POST['email'], $_POST['adults'], $_POST['kids'])) {
    $email = $_POST['email'];
    $adults = $_POST['adults'];
    $kids = $_POST['kids'];
    $id = random_int(1, 100);

    //Load Composer's autoloader
    require '../vendor/autoload.php';

    //Create an instance; passing `true` enables exceptions
    $mail = new PHPMailer(true);

    try {
        //Server settings
        $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host       = 'smtp.gmail.com';                        //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        $mail->Username   = 'jashubharath216@gmail.com';            //SMTP username
        $mail->Password   = 'eixxiomfhtvrmfkf';                      //SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
        $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

        //Recipients
        $mail->setFrom('email@email.com');
        $mail->addAddress($email);                                  //Add a recipient

        //Content
        $mail->isHTML(true);                                        //Set email format to HTML
        $mail->Subject = 'Ticket confirmation';
        $mail->Body = "
            <div style='font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; background-image: url(https://imgs.search.brave.com/TrU92WB5HgFfqxR25XFi-pASieAvBT8jqem7REEGxyA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9jZG4u/cGl4YWJheS5jb20v/cGhvdG8vMjAxOC8w/Mi8xMy8yMy80MS9u/YXR1cmUtMzE1MTg2/OV82NDAuanBn); background-size: cover; background-position: center;'>
                <h1 style='text-align: center; color: #ffffff; padding-top: 50px;'>Zozo Zoo Ticket Confirmation</h1>
                <div style='background-color: rgba(255, 255, 255, 0.8); padding: 20px; border-radius: 10px;'>
                    <p style='font-size: 16px; line-height: 1.6; color: #000000;'>
                        Dear Visitor,<br><br>
                        We are thrilled to confirm your ticket reservation for Zozo Zoo. Below are the details of your booking:<br><br>
                        <strong>Ticket ID:</strong> $id<br>
                        <em>Please keep this ID secure, as you will need it for entry into the zoo.</em><br><br>
                        <strong>Number of Adult Tickets:</strong> $adults<br>
                        <strong>Number of Child Tickets:</strong> $kids<br><br>
                        We are eagerly awaiting your visit to Zozo Zoo and hope you have a fantastic time exploring our exhibits and experiencing the wonders of nature. If you have any questions or require further assistance, please don't hesitate to contact us.<br><br>
                        Thank you for choosing Zozo Zoo for your leisure and educational experience. We look forward to welcoming you soon!<br><br>
                        Sincerely,<br>
                        Zozo Zoo Team
                    </p>
                </div>
            </div>
        ";
        $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

        // Send email
        $mail->send();
        echo "Email sent successfully!";
    } catch (Exception $e) {
        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }
} else {
    echo "Please provide all required information.";
}
