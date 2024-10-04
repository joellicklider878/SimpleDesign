# SimpleDesign

SimpleDesign is a domain-specific language (DSL) designed to explore and teach network security concepts. It extends SimpleDSL 1.0.1 to include constructs for firewalls, intrusion detection systems (IDS), and encryption.

## Features

- **Firewall Configuration**: Define rules to allow or deny network traffic.
- **Intrusion Detection Systems (IDS)**: Monitor network traffic and alert on suspicious activity.
- **Encryption**: Specify encryption methods and keys for securing data.

## Installation

### Prerequisites

- Java Development Kit (JDK) 8 or later
- Python 3
- ANTLR 4.9.2

### Steps

1. **Clone the Repository**:
   ```sh
   git clone https://github.com/yourusername/SimpleDesign.git
   cd SimpleDesign

3. Generate the Parser:

java -jar antlr-4.9.2-complete.jar -Dlanguage=Python3 SimpleDesign.g4

4. Install antlr4 runtime for python:

pip install antlr4-python3-runtime==4.9.2

5. Usage
Example Configuration
Create a file named example.sd with the following content:

firewall {
    rule "allow" from "192.168.1.0/24" to "any" port 80
    rule "deny" from "any" to "any" port 22
}

ids {
    monitor "192.168.1.0/24"
    alert "suspicious_activity"
}

encryption {
    method "AES-256"
    key "my_secure_key"
}

6. Running the parser

Use the generated parser to parse the configuration file:

create file main.py

Python

import antlr4
from SimpleDesignLexer import SimpleDesignLexer
from SimpleDesignParser import SimpleDesignParser

def main():
    input_stream = antlr4.FileStream('example.sd')
    lexer = SimpleDesignLexer(input_stream)
    stream = antlr4.CommonTokenStream(lexer)
    parser = SimpleDesignParser(stream)
    tree = parser.design()
    print(tree.toStringTree(recog=parser))

if __name__ == '__main__':
    main()

run the program 
python main.py example.sd

Create folder test
create file test_SimpleDesign.py
import unittest
import antlr4
from SimpleDesignLexer import SimpleDesignLexer
from SimpleDesignParser import SimpleDesignParser

class TestSimpleDesign(unittest.TestCase):
    def test_firewall_rule(self):
        input_stream = antlr4.InputStream('firewall { rule "allow" from "192.168.1.0/24" to "any" port 80 }')
        lexer = SimpleDesignLexer(input_stream)
        stream = antlr4.CommonTokenStream(lexer)
        parser = SimpleDesignParser(stream)
        tree = parser.design()
        self.assertIsNotNone(tree)

if __name__ == '__main__':
    unittest.main()





