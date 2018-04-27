# johnrykken.com

### April 27, 2018

### _John Rykken_


This is my personal website. I am building it with Ruby, Rails, and Javascript, using Bulma for the CSS framework, and incorporating a variety of Ruby Gems for everything from authentication to admin functionality. Generally speaking, I'm aiming for a simple, dark-themed UI and a smooth, intuitive UX. Eventually, this site will have five different sections. They are:

1. ABOUT
  * A paragraph or two about me
  * A section listing my skills, both programming and otherwise
  * A section listing hobbies
  * A list of books, films, etc. that I enjoy

2. PLAIN ENGLISH
  * Perhaps my favorite part of this site, Plain English will explain computer terminology in simple terms
  * I'm going to pretend my readers are a class of eighth graders who have used computers but otherwise know nothing about code or computer science  
  * I'm going to utilize a pSQL Database for this. Each term will be an instance of  `class Term`.
  * `Term` will have the attributes `name` and `definition`
  * Users will have the option to sign up and sign in to Plain English  
  * The Devise Gem will handle authentication
  * Authenticated users will have the ability to leave comments, which will be instances of `class Comment`
  * Each `Comment` will `belong_to :term`
  * Each  `Term` will `have_many :comments`
  * My hope is that users will use the comments to ask for clarification or provide feedback
  * Plain English will have a request form where users may request explanations of specific terms
  * This portion of the site will have a protected route, accessible by only Admin, where I will be able to create, read, update, and delete `Term`s.     

3. PORTFOLIO
  * Single page section with pictures of and links to my other coding projects

4. CODE
  * To start, this section will have 10 'toy' programming problems
  * 5 of them will be written in Ruby
  * 5 of them will be written in Javascript
  * For example, there may be a Javascript 'Ping-Pong' problem. First, the idea will be explained. I.e. "Please input a positive number. The Javascript is going to return an array of numbers from 1 to the number you input. All numbers divisible by 3 will be replaced with "ping". All numbers divisible by 5 will be replaced with "pong". So, if you give me the number 7, the program will return 1, 2, ping, 4, pong, ping, 7.  
  * Each problem will have a link titled 'show me the code', which will invoke a modal window displaying the actual coding logic.
  * I'm going to use the Red Carpet gem to stylize the code in the modals    

5. WRITING
  * An introduction to my history as a writer
  * An overview of the Max Mayhem Services
  * A link to my novel, BLOODWOOD
  * The firts 10 chapters of my unpublished novel, THE ODDCLOCK      

## Setup and Installation

None required.

## Specs as of April 27, 2018

* Build landing page with navbar
* In navbar, include links to HOME, ABOUT, CODE, WRITING, and PLAIN ENGLISH
* Build basic PLAIN ENGLISH page
* If users are on the PLAIN ENGLISH page, display sidebar with with SIGN UP, SIGN IN, and SIGN OUT options  
* Utilize Devise to implement PLAIN ENGLISH authentication   

## Notes
* Parallax scrolling to be implemented throughout site

## Built With

* HTML
* CSS, Bulma
* Javascript
* Ruby
* Rails

## Author

**John Rykken**

## Contact

_john.rykken@gmail.com_

## License

Licensed under the MIT License.

  <!-- ## Acknowledgments -->

Copyright (c) 2018 **_John Rykken_**
