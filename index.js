require("dotenv/config");
const express = require("express");

const app = express();

app.get("*", (req, res) => {
  res.send(process.env);
});

app.listen(process.env.PORT, () =>
  console.log(`Listening on PORT ${process.env.PORT}`)
);
