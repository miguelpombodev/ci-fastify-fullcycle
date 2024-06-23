import { FastifyInstance } from "fastify";

export async function HelloWorldRoutes(app: FastifyInstance) {
  app.get("/", async (request, reply) => {
    return { message: "Hello World!" };
  });
}
