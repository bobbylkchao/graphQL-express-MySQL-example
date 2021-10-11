const { GraphQLList } = require('graphql');
const { dbQuery } = require('../../database');
const { UserType } = require('../../types');

const fieldsUsers = {
  type: new GraphQLList(UserType),
  async resolve(_, {}){
    let res = await dbQuery(`SELECT * FROM User`);
    return res;
  }
};

module.exports = fieldsUsers;
