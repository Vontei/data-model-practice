var Business = function(name,slogan){
  this.name = name,
  this.slogan = slogan,
  this.address = null
}

Business.prototype.nameAndSlogan = function(){
  console.log('Welcome to ' + this.name + ',' + this.slogan)
}

var Address = function(street, city_state_zip){
  this.street = street,
  this.city_state_zip = city_state_zip
}


var Galvanize = new Business('Galvanize', '#LevelUp')
Galvanize.address = new Address('Platte Street', 'Denver,CO,80201')
Galvanize.nameAndSlogan()

console.log(Galvanize)



///If the relationship was one to one, you would want the busines to have one
/////address... so you would pass address as an argument to the Business. 
