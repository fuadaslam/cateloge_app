class GraphqlQueryParameter {
  String signUp() {
    String mutationCreateUser = """
    mutation createWhaUserData(\$email:String!) {
  createWhaUser(input:{data:{email:\$email}}) {
    whaUser {
      id
    }
  }
}
    """;
    return mutationCreateUser;
  }

  String readDistrictQuery = """
  query 
  getDistricts(\$locale:String!,\$localeml:String!){
 districts(locale:\$locale) {
  id
  District_name
  locale
  localizations(where:{locale:\$localeml}) {
    id
    District_name
    locale
  }
}
}
   """;
  String updateUserDetails = """
    mutation updateWhaUserData(\$id:ID!, \$name:String!, \$district:ID!) {
  updateWhaUser(input:{where:{id:\$id},data:{full_name:\$name, district:\$district}}) {
    whaUser {
      id
      full_name
      district {
        District_name
      }
    }
  }
}
    """;
  String discoverHomePageItemList = """
query getDiscoverHomePageItems(\$locale:String!){
  discoverHomepageItems(locale:\$locale){
    id,
    Name
    icon_svg
    }
}
    """;
  String getBlogs = """query (\$locale:String!,\$limit:Int!){
  blogs(locale:\$locale,limit:\$limit){
    id,
    title,
    body,
    date,
    images{
      url
    }
  }
} """;

  String getBlogDetails = """query getBlogDetails(\$locale:String!) {
  blogs(locale:\$locale){
    id,
    title,
    body,
    date,
    images{
      url
    }
  }
} """;

  String getTrendingSections = """ query getTrendings(\$locale:String!) {
  trendings(locale:\$locale) {
  id
  keyword
  icon {
  name
  url
}
}
}""";
}
