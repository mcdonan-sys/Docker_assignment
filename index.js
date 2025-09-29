const express = require('express');
const app = express();
const api = require('./api');

app.use('/api', api);

app.get('/', (req, res) => {
  res.send('<h1>Docker Node.js App Running!</h1>');
});

app.listen(3000, () => {
  console.log('App listening on port 3000');
});

