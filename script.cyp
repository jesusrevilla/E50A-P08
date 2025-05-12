// Introducción a las Bases de Datos con Grafos
// 
// 1. Definición y Conceptos Básicos
//    - Una base de datos con grafos es un tipo de base de datos NoSQL que utiliza estructuras de grafos con nodos, aristas y propiedades para representar y almacenar datos.
//    - Componentes principales:
//      - Nodos: Representan entidades o puntos de datos.
//      - Aristas: Representan las relaciones entre los nodos.
//      - Propiedades: Atributos que describen nodos y aristas.
//
// 2. Ventajas de las Bases de Datos con Grafos
//    - Eficiencia en consultas de relaciones complejas.
//    - Flexibilidad y escalabilidad.
//    - Modelado natural de datos conectados.
//
// 3. Casos de Uso Comunes
//    - Redes Sociales.
//    - Sistemas de Recomendación.
//    - Detección de Fraude.
//
// 4. Ejemplos de Bases de Datos con Grafos Populares
//    - Neo4j.
//    - Amazon Neptune.
//    - OrientDB.
//
// 5. Lenguajes de Consulta para Grafos
//    - Cypher.
//    - Gremlin.
//    - SPARQL.
//
// 6. Ejemplo Práctico
//    - Modelado de una Red Social:
//      - Nodos: Usuarios, publicaciones, comentarios.
//      - Aristas: Amistades, likes, comentarios.
//      - Propiedades: Nombre de usuario, contenido de la publicación, fecha del comentario.
//
// 7. Conclusión
//    - Las bases de datos con grafos ofrecen una manera poderosa y eficiente de manejar datos altamente conectados.

// Create nodes
CREATE (alice:Person {name: "Alice", age: 30})
CREATE (bob:Person {name: "Bob", age: 25})
CREATE (carol:Person {name: "Carol", age: 27})

// Create relationships
CREATE (alice)-[:FRIEND]->(bob)
CREATE (bob)-[:FRIEND]->(carol)
CREATE (carol)-[:FRIEND]->(alice)

// Ensure separation of operations
WITH alice, bob, carol

// Find all friends of Alice
MATCH (alice:Person {name: "Alice"})-[:FRIEND]->(friend)
RETURN friend.name, friend.age

// Find mutual friends between Alice and Bob
// MATCH (alice:Person {name: "Alice"})-[:FRIEND]->(mutualFriend)<-[:FRIEND]-(bob:Person {name: "Bob"})
// RETURN mutualFriend.name, mutualFriend.age


// Exercise: Extend the Social Network
// Task 1: Add More People and Relationships
// Add two new people: Dave and Eve.
// Create friendships between:
// Alice and Dave
// Bob and Eve
// Carol and Dave

// Task 2: Write Queries
// Find all friends of Bob.
// Find mutual friends between Carol and Dave.
// Find people who are friends with both Alice and Eve.
