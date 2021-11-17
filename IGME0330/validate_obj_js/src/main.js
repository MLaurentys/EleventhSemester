const schema = {
  required: new Set(["name", "email"]),
  optional: new Set(["age"]),
  name: (value) => /^[A-Z][a-z]+ [A-Z][a-z]+$/.test(value),
  email: (value) => /^.+@.*/.test(value),
  age: (value) => parseInt(value) === Number(value) && parseInt(value) >= 18,
};

const tests = [
  {
    name: "Matheus",
    email: "mtlaurentys@gmail.com",
    foo: "bar",
  },
  {
    name: "Matheus Laurentys",
    email: "mtl",
    age: 7,
  },
  {
    name: "Matheus Laurentys",
    email: "mtl@123",
    age: 19,
  },
  {
    name: "Matheus Laurentys",
    email: "mtl@123",
  },
];

function validatePropertySet(obj, schema) {
  return (
    Array(schema.required).every((key) => !obj.hasOwnProperty(key)) &&
    Object.keys(obj).every(
      (key) => schema.required.has(key) || schema.optional.has(key)
    )
  );
}

function validate(obj, schema) {
  if (!validatePropertySet(obj, schema)) return false;
  return Object.entries(obj).every(([key, val]) => schema[key](val));
}

function main() {
  const valid = tests.filter((el) => validate(el, schema));
  console.log(valid);
}

main();
