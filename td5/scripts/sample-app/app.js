const express = require('express');

const app = express();
app.set('view engine', 'ejs');

const escapeHtml = (value) => {
  return value
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&#34;')
    .replace(/'/g, '&#39;');
};

app.get('/', (req, res) => {
  res.send('DevOps Labs!');
});

app.get('/name/:name', (req, res) => {
  const safeName = escapeHtml(req.params.name);
  res.send(`Hello, ${safeName}!`);
});

module.exports = app;
