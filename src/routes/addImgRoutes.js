import express from "express";
import { uploadNewFeed } from "../config/upload.js";
import { uploadImg } from "../controllers/addImgController.js";
import { verifyToken } from "../config/jwt.js";

const addImgRoute = express.Router();

addImgRoute.post("/upload-img",verifyToken, uploadNewFeed.single("duong_dan"), uploadImg);

export default addImgRoute;
