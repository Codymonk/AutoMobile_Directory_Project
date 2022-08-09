const con = require("../config/db");
let express=require('express');
let app = express();
const { request, response } = require("express");
let router=express.Router();


router.post('/car/data', (req, res) => {
    let filename=new Date().toISOString()+'-'+req.file.originalname ;
    let {carName,carPrice,carFuelType,seatingCapacityNo,carVariant,marketIntroduction,technicalSpecification,exteriorAndDesign, interiorAndFeatures,colours,seatingCapacity,Rivals}=req.body;
    let sql='insert into carlistdata set ?';
    let body={carName:carName,carPrice:carPrice,carImage:filename,carFuelType:carFuelType,seatingCapacityNo:seatingCapacityNo,carVariant:carVariant,marketIntroduction:marketIntroduction,technicalSpecification:technicalSpecification,exteriorAndDesign:exteriorAndDesign, interiorAndFeatures:interiorAndFeatures,colours:colours,seatingCapacity:seatingCapacity,Rivals:Rivals};
    con.query(sql,body,(err,result)=>{
     if(!err)
     {
        return res.status(201).json({
         msg:' Car Data Inserted '
        }); 
         
     }
     else
     {
         return res.status(400).json({
             msg:'error occured',
             error:err
            });
        
     }
    });
 });

 router.get('/:carName',(req,res)=>{
    var carName = req.params.carName;
    console.log(carName);
    let sql=`DELETE FROM carlistdata WHERE carName=?`;
    let body = [carName]
    con.query(sql,body,(err,data)=>{
        if(err){
            throw err;
        }
        else{
            res.redirect('/form');
        }
    });
});

 router.get('/:carName',(req,res)=>{
    var carName = req.params.carName;
    console.log(carName);
    let sql=`DELETE FROM carlistdata WHERE carName=?`;
    let body = [carName]
    con.query(sql,body,(err,data)=>{
        if(err){
            throw err;
        }
        else{
            res.redirect('/form');
        }
    });
});

router.post('/edit/:carName', (req,res,next)=>{
    let {carName}=req.body;
    let {carPrice,carFuelType,seatingCapacityNo,colours,}=req.body;
    let sql='update carlistdata set carPrice=?, carFuelType=?, seatingCapacityNo=?, colours=? where carName=?';
    let body=[carPrice,carFuelType,seatingCapacityNo,colours,carName];
    con.query(sql,body,(err,result)=>{
        if(!err)
        {
           return res.status(200).json({
            msg:'Car List Updated'
           });
            
        }
        else
        {
            return res.status(400).json({
                msg:'error occured',
                error:err
            });
        }
    });
})
 module.exports=router;
 