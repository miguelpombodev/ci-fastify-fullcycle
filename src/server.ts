import fastify from "fastify";
import { HelloWorldRoutes } from "./routes";

const app = fastify();

app.register(HelloWorldRoutes, {
  prefix: "hello",
});

app
  .listen({
    port: 3000,
  })
  .then(() => {
    console.log("HTTP Server Running!");
  });
