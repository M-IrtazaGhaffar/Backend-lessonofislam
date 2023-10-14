const nodemailer = require("nodemailer");
const handlebars = require('handlebars')

async function sendMailApproval(name, email) {
    const transporter = nodemailer.createTransport({
        host: "diablo.hostns.io",
        port: 465,
        secure: true,
        auth: {
            user: "info@ittidevelops.com",
            pass: "irtaza@2003",
        },
    });

    const htmlTemplate = `<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <style>
        @import url('https://fonts.googleapis.com/css2?family=Amiri+Quran&family=Bacasime+Antique&family=Bricolage+Grotesque&family=Poppins&family=Raleway&family=Ruwudu&family=Space+Grotesk&display=swap');

        body {
            padding: 10px;
            font-family: 'Poppins', sans-serif;
        }

        h1 {
            color: #ff385c;
            font-size: 30px;
            text-align: center;
        }

        h3 {
            text-align: center;
        }

        a {
            font-family: 'Poppins', sans-serif;
            text-decoration: none;
            color: #ff385c;
            font-size: 15px;
        }

        p {
            font-size: 13px;
        }
    </style>
    </head>
    <body>
        <section>
            <h3>
                Welcome to
            </h3>
            <h1>
                LessonOfIslam
            </h1>
            <p>Dear {{username}}!</p>
            <p>
                Thanks for your time! We wanted to inform you that this mail was sent just because you wanted to be a Writer for us. We appericate
                your mindset and feeling honourable to say you that you are now Approved as Writer.
                <br>
                Here is the link to the dashboard:
                <br>
                <br>
                <a href="https://dashboard-lessonofislam.vercel.app/dashboard">Continue to Dashboard</a>
            </p>
        </section>
    </body>
    </html>`

    try {
        const template = handlebars.compile(htmlTemplate)

        const replacements = {
            username: name
        }

        const htmlToSend = template(replacements)

        const info = await transporter.sendMail({
            from: '"LessonOfIslam" <info@ittidevelops.com>',
            to: `${email}`,
            subject: "Welcome to LessonOfIslam",
            html: htmlToSend,
        });

        return true;
    } catch (error) {
        return false
    }
}

module.exports = {
    sendMailApproval
}