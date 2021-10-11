const { GraphQLList } = require('graphql');
const { dbQuery } = require('../../database');
const { PostType } = require('../../types');

const fieldsPosts = {
  type: new GraphQLList(PostType),
  async resolve(_, {}){
    let res = await dbQuery(`SELECT * FROM Post`);
    return res;
  }
};

module.exports = fieldsPosts;
