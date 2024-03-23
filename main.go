package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {

	var frog string = `
	        (%s)
              /   
      o  o        
     ( -- )       
  /\( ,   ,)/\    
^^   ^^  ^^   ^^ 
	`
	var say = strings.Join(os.Args[1:], " ")

	fmt.Printf(frog, say)
}
