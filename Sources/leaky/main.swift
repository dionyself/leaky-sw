import Graphiti
import Kitura
import GraphQLMiddleware

let schema = try Schema<NoRoot, NoContext> { schema in
    try schema.query { query in
        try query.field(name: "hello",
                        type: String.self,
                        description: "Totally Awesome",
                        deprecationReason: nil,
                        resolve: {
                            (type, arguments, context, resolveInfo) -> String in
                            return "world"
        })
    }
}

let router = Router()

let graphQL = GraphQLMiddleware(schema: schema,
                                showGraphiQL: true,
                                rootValue: noRootValue)

router.all("/graphql", middleware: graphQL)

Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()
