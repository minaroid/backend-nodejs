import express, { Request, Response } from "express";
import dotenv from "dotenv";

dotenv.config();

const app = express();

app.get("/health", (request: Request, response: Response, next: Function) => {
  response.status(200).json("200 OK");
})

const port = process.env["PORT"] ?? 80;

app.listen(port, () => {
    console.log(`Server started on port ${port}`);
  });
  

export default app; 