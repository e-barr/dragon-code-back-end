# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username:"Pablo")
# User.create(username:"Erika")
# User.create(username:"Stephen")

# Javascript Questions===================================

# Question.create(category: '', difficulty: '', description: '', answer: '', option1: '', option2: '', option3: '') question constructor thing

# beginner 1=========================
b = 'beginner'
c = 'HTML, CSS, and JavaScript: The Big Picture'

Question.create(category: c, difficulty: b, description: 'What does URL stand for?', answer: 'Uniform Resource Locator', option1: 'Universal Relative Link', option2: 'Unilateral Resource Locator', option3: 'Unilateral Relative Link')

Question.create(category: c, difficulty: b, description: 'What is HTML?', answer: 'A programming language for server-side applications', option1: 'A high-level programming language for creating mobile applications', option2: 'The standard markup language for creating websites and web applications', option3: 'A scripting language for styling web components')

Question.create(category: c, difficulty: b, description: 'What does CSS stand for?', answer: 'Cascading Style Sheets', option1: 'Centered Styling Schemes', option2: 'Compact Style Sheets', option3: 'Cascading Styling Schemes')

Question.create(category: c, difficulty: b, description: 'What is JavaScript?', answer: 'A high-level, interpreted programming language', option1: 'The standard markup language for creating websites and web applications', option2: 'A style sheet language used for describing the presentation of a document written in a markup language', option3: 'A programming language for server-side applications')

Question.create(category: c, difficulty: b, description: 'What is one of the main benefits of using JavaScript in web pages?', answer: 'It can change the content of a page without reloading the page.', option1: 'It can contain links to other documents.', option2: 'It can change the color of HTML elements after reloading the page.', option3: 'It can remove elemets from a page.')

Question.create(category: c, difficulty: b, description: 'What is a benefit that you can get when you separate style (CSS) from content (HTML)?', answer: 'You can reuse the style in more than one content document.', option1: 'You can write the CSS more quickly.', option2: 'You get error checking in certain advanced editing tools.', option3: 'You can make a dynamic web application.')

Question.create(category: c, difficulty: b, description: 'What is the relationship between JavaScript and the programming language called Java?', answer: 'JavaScript was marketed as the companion language to Java, but their implementations are not the same.', option1: 'JavaScript is the web version of the Java language.', option2: 'You use JavaScript for websites and Java for when you need to use media files.', option3: 'JavaScript is the same thing as Java.')

Question.create(category: c, difficulty: b, description: 'What is the Canvas in a web page?', answer: 'It is an HTML element.', option1: 'It is a JavaScript object.', option2: 'It is a CSS property.', option3: 'It is a styleSheet.')

Question.create(category: c, difficulty: b, description: 'Why would you use a CSS library?', answer: 'To reuse already existing styles', option1: 'To optimize search machine results', option2: 'To minimize the size of your web site', option3: 'To checkout CSS books.')

Question.create(category: c, difficulty: b, description: 'What is a web server?', answer: 'A computer that runs special software that enables it to expose resources to the internet', option1: 'Any computer that is connected to the internet is a web server', option2: 'A special computer that runs in a university', option3: 'A computer connected to the internet.')


c = 'JavaScript Fundamentals'



Question.create(category: c, difficulty: b, description: 'How is jQuery usually imported into a JavaScript module?', answer: "import $ from 'jquery';", option1: "import default from 'jquery';", option2: "import 'jquery';", option3: "import { $ } from 'jquery';")

Question.create(category: c, difficulty: b, description: "What does a call to super() accomplish?", answer: "It executes a function in a base class.", option1: "It executes a function with the highest priority.", option2: "It optimizes a function call.", option3: "It overrides a base class function.")


Question.create(category: c, difficulty: b, description: "What output is produced?

let timeoutId = setTimeout( function() {
  console.log('yes');
}, 3000);
clearTimeout(timeoutId);", answer: "none", option1: "yes yes yes", option2: "yes", option3: "yes yes yes yes")


Question.create(category: c, difficulty: b, description: "You are handling the submit event on a form in a JavaScript function. How would you ensure that the browser does not submit the form for you automatically after the function completes?", answer: "Call event.preventDefault();", option1: "Return false", option2: "set event.result = true;", option3: "Set event.handled = true;")

Question.create(category: c, difficulty: b, description: "Which command allows you to exit a JavaScript loop immediately?", answer: "break", option1: "stop", option2: "catch", option3: "goto")

Question.create(category: c, difficulty: b, description: "What output is produced?

if (5 === '5')
  console.log('yes');
if (6 == '6')
  console.log('no');", answer: "no", option1: "yes", option2: "yes no", option3: "(nothing)")


Question.create(category: c, difficulty: b, description: "What logs out?

if (5 === 5) {
    let message = 'Equal';
}
console.log(message);", answer: "There's an error", option1: "Equal", option2: "undefined", option3: "null")


Question.create(category: c, difficulty: b, description: "What is an important consideration when creating a final build of your JavaScript application to go public on the internet?", answer: "Protect your code with minification and obfuscation", option1: "Encrypt your code with a secure key", option2: "Secure your code with a password", option3: "Convert your code into a native executable")

Question.create(category: c, difficulty: b, description: "How would you create a JSON string from a JavaScript object?", answer: "JSON.stringify(obj);", option1: "obj.parseJSON();", option2: "JSON.parse(obj);", option3: "obj.toJSON();")

Question.create(category: c, difficulty: b, description: "Which statement will fire off a user defined error message to be caught in a try/catch/finally statement?", answer: "throw(err);", option1: "raise(err);", option2: "exception(err);", option3: "error(err);")

# Question.create(category: c, difficulty: b, description: "", answer: "", option1: "", option2: "", option3: "")
# Question.create(category: c, difficulty: b, description: "", answer: "", option1: "", option2: "", option3: "")
# Question.create(category: c, difficulty: b, description: "", answer: "", option1: "", option2: "", option3: "")
# Question.create(category: c, difficulty: b, description: "", answer: "", option1: "", option2: "", option3: "")
# Question.create(category: c, difficulty: b, description: "", answer: "", option1: "", option2: "", option3: "")
# Question.create(category: c, difficulty: b, description: "", answer: "", option1: "", option2: "", option3: "")
# Question.create(category: c, difficulty: b, description: "", answer: "", option1: "", option2: "", option3: "")
# Question.create(category: c, difficulty: b, description: "", answer: "", option1: "", option2: "", option3: "")
# Question.create(category: c, difficulty: b, description: "", answer: "", option1: "", option2: "", option3: "")
# Question.create(category: c, difficulty: b, description: "", answer: "", option1: "", option2: "", option3: "")
# Question.create(category: c, difficulty: b, description: "", answer: "", option1: "", option2: "", option3: "")