Evernote SASS Structure Boilerplate
=============

After reading the book [SMACSS](http://smacss.com/) and finding it very helpful the Front End team at Evernote has used some of the ideas in our SASS build. We've found breaking the SASS files out into directories (Base, Layout, Modules, and Themes) helps organize your files in a project and compile CSS into a clean, logical file. Each page has a SASS (.scss) file created that acts as a project file that imports the individual modular components from Base, Layout, Modules, and Themes that are needed to build the particular page.

This build methodology is currently being used on [Evernote.com](https://evernote.com).

SASS Directories
----------

1.  Base

	The base directory contains styles that help start a project. The base directory could contain the following type of SASS files:
	* Vendor dependancies (Compass, Foundation)
	* Authored dependancies (Mixins, variables, Extends)
	* Fonts
	* Reset

2.  Layout

	The layout directory contains styles that are large containers of a page. This directory could include SASS files like:
	* Responsive Grid
	* Page specific layouts

3.  Modules

	The modules directory will probably contain the bulk of your SASS files. A page may consist of multiple modules and should be style individually. These modules may include files like:
	* Header
	* Footer
	* Navigation
	* Content Block

4.  Themes

	The themes directory contains any specific styles that a page may need to change from the generic layout or modules. For example the header in your website maybe green throughout a website or application but on a specific page you want it to change to a blue background that's where the themes files would come in.


## Rules

	* There should only be a maximum of 2 CSS files per page ( this prevents HTTP requests )
	* One line for each selector or rule
	* List related items together
	* Only nest 3 levels deep
	* Break files out into small modules (avoid having a SCSS file that is larger than 100 lines)
	* Avoid using IDs throughout the site. Use IDs for parent elements. Example: Header, Footer, Main. Using Classes avoids having to use !important 
	* Be generous with commenting

## Commenting
	* Using "// " for your comments in SASS and they will not output in the compiled CSS


## Variables
	* Any values commonly throughout the SASS build should be set as a variable (fonts, colors, percentages, z-index)
	* All colors should be variables


## Order of imports
	* Vendor dependancies (compass)
	* Authored dependancies (Mixins, variables)
	* Base styles ( reset, fonts, typography )
	* Layout styles
	* Modules styles
	* Theme styles
