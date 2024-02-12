require('dotenv').config();
const express = require('express');
const { dbConnection } = require('./db/conn');

const app = express();

const port = process.env.PORT;
const www = process.env.WWW;

app.use(express.static(www));

app.use("/api", require('./routes'));

const startServer = async () => {

    await dbConnection();

    app.listen(port, () => console.log(`listening on http://localhost:${port}`));
}


startServer();