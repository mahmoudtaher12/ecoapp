class user_model
{
  bool status;
  user_model({required this.status});
  factory user_model.fromjson(Map json)
  {
    return user_model(status:json["status"]);
  }
}