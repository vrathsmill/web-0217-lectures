Problem: Want to use html instead of puts statements
  - We know how to html
  - How do we make dynamic html
- What is dynamic html
    - when data changes, html reflects that 
    - make html template
       - So we can read this file, and that will turn it into a string 
      - So it seems like we can just do interpolation, to convert it, and then spit it out onto a different page
    
  a. Need to generate our html, and create a rake file to do this 
  b. So this will represent our site folder 
    1. One object - which this does this process for me
      □ And this isn't attached to my other models, so I am going to have this tool, which all it will do is render my views
      □ And move this into a model for now, and need to make it 
    § So then what do we know about how the object must look
      □ So now let's build it 
        ® First explain the general process 
          ◊ So real problem is that need to generate strings on the fly, that are based on our ruby data 
          ◊ And then place this string in a file that we can then open 
        ® Make a folder 
        ® And this is where our html files will go
          ◊ App/views
          ◊ Remove _site if it exists
          ◊ Inside here we had another folder, so  make a static site called _site 
          ◊ Read our html - and this is in a different folder 
          ◊ Mash together 
        ® I need a place where I can read html, and then a place that it has it all together 
  ○ So now we need to read some sort of file, that allows me to combine strings with ruby code 
    § Html is just a string 
    § So we already learned this right…
      □ So then we would just do with interpolation
  ○ So then this looks ok 
    § So then the structure the format of this will be the same 
    § So then it can be a different page for hide, so want to use the same structure, but now want it to be changed
    § So now when do name = "hide" 
      □ It does not render it 
      □ So the string no longer has interpolation, and instead it is stored as a string, and the data has been evaluated
      □ So we need a way to reuse the same string, and this is a template
    § ERB
      □ Builds a chunk of ruby code, that will 
      □ Require 'erb'
        ® So now we use a different kind of delimeter for a template
        ® So now place in ruby code 
      □ So perhaps first build out the html, and display it 
      □ Still a string 
      □ Template = Erb.new(string)
      □ Template.methods 
      □ Template.result(binding)
        ® Explain this up front 
          ◊ So I could pass multiple different data pieces into this object, but what would be better is to pass everyone
          ◊ The goal is to pass all my local variables in 
          ◊ Binding.local_variables
        ® So it’s a way to capture every local variable that was in my scope
        
        ® So basically what we are saying is execute this string, and 
        ® So what is binding 
          ◊ It’s the ability to wrap up the scope
          ◊ I am spawning a new universe 
          ◊ So when I do binding I am compressing this one single universe into a local variable called binding
          ◊ So then I can pass universe into another universe
          ◊ Because I have to pass every local variable into this object
        ® So it’s a way to capture every local variable that was in my scope
    § If I have the ruby code
      □ It will run it, but it will not spit it out
      □ So we want it to loop, but we don't want the return value spit out at the end, because the return value is an array, and I don’t want to spit that out 
      □ 
• Learning goals
  ○ Better understand view layer in mvc
  ○ Understand difference btwn a string and a template
  ○ Understand difference btwn spitting operating ruby in erb, and rendering ruby through erb 
  ○ Understand adapters -> because this is the same data in different forms

Code 
• Reset method (write this last)
  ○ FileUtile.rm_rf('views/_site')
  ○ FileUtils.mkdir_p('views/_site')
• Gather data 
  ○ String = File.read('app/views/template.html.erb')
• Mash together 
  ○ Template = ERB.new(string)
  ○ Template.result(binding)
• Render output
  ○ File.write('views/site/index.html', result)

• So user will make requests 
  ○ So we spit out a static 
  ○ So our server knows how to turn this into a string, so we will not make a new file here 
  ○ So convert this into something that is a real presentation
