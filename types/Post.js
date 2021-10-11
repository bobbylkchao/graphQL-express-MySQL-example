const { GraphQLObjectType, GraphQLInt, GraphQLString, GraphQLList } = require('graphql');
const { dbQuery } = require('../database');
const UserType = require('./User');

const PostType = new GraphQLObjectType({
  name: 'Post',
  fields:() => (
    {
      id: { type: GraphQLInt },
      createdAt: { type: GraphQLString },
      updatedAt: { type: GraphQLString },
      title: { type: GraphQLString },
      content: { type: GraphQLString },
      published: { type: GraphQLInt },
      user: { 
        type: UserType,
        resolve: async (post) => {
          let res = await dbQuery(`SELECT * FROM User WHERE id = ${parseInt(post.userId)}`);
          return res[0];
        }
      }
    }
  ) 
});

module.exports = PostType;