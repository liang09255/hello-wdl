version 1.0

workflow hello_world {
  String Name
  call say_hello {
    input:
      name = Name
  }
}

task say_hello {
  String name

  command {
    echo "Hello, World!"
    echo "Hello ${name}!"
  }

  output {
    String salutation = read_string(stdout())
  }
}
