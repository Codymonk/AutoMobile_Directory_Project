const con = require('./config/db')
let form = require('./routes/form')
const express = require("express");
const app = express();
const PORT = 3000;
const path = require("path");
const router = express.Router();
const multer=require('multer');


app.use(express.static(`${__dirname}/public`));

// to set the view engine
app.set("view engine", "hbs");

//template engine route
app.get("/", (req,res)=>{

  con.query('SELECT * from carlistdata', function(err,rows){
    if (err) throw err;
    res.render("index",{
      fname:rows
    })

  })
})

app.get("/form", (req,res)=>{
  con.query('SELECT * from carlistdata', function(err,rows){
    if (err) throw err;
    res.render("form",{
      formDB:rows
    })
  });
})

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
// router.get('/', function (req, res) {
//   res.sendFile(path.join(__dirname + "/public/index.html"));
// });
let filestroage=multer.diskStorage({
  destination:(req,file,cb)=>{
      cb(null,'images');
  },
  filename:(req,file,cb)=>{

      cb(null,new Date().toISOString()+'-'+file.originalname);
}});

app.use(multer({storage:filestroage}).single('images'));
app.use('/', router);
app.use('/',form);
app.listen(PORT, () => {
  console.log(`The server is started on ${PORT}`);
});





