import express from "express";
import { uploadAvatar } from "../config/upload.js";
import { updateInfoUser } from "../controllers/personalController.js";
import { verifyToken } from "../config/jwt.js";

const personalRoute = express.Router();

personalRoute.put("/update-user-info", verifyToken, uploadAvatar.single("anh_dai_dien"), updateInfoUser);

export default personalRoute;
