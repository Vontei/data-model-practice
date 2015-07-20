var Business = function (name, slogan) {
  this.name = name
  this.slogan = slogan
  this.address = null
}

Business.prototype.nameAndSlogan = function (first_argument) {
  return this.name + ' (' + this.slogan + ')'
};

var Address = function (street, cityStateZip) {
  this.street = street
  this.cityStateZip = cityStateZip
}

var acme = new Business("Acme", "All the chemicals you need!")
acme.address = new Address("15 Main", "New York, NY 10012")

// NOTE: not all "attributes" from a Class Diagram need to be sent into the constructor.  Some can be set later.

// Also note that a Business can only have 1 address, not many.
