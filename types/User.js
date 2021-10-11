const { GraphQLObjectType, GraphQLInt, GraphQLString, GraphQLList } = require('graphql');

const UserType = new GraphQLObjectType({
  name: 'User',
  fields: {
    id: { type: GraphQLInt },
    email: { type: GraphQLString },
    name: { type: GraphQLString }
  }
});

module.exports = UserType;