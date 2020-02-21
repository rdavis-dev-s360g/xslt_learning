package com.xslt;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

public class Example1 {
	
	public static void main(String args[]) throws Exception {
	    StreamSource source = new StreamSource(args[0]);
	    StreamSource stylesource = new StreamSource(args[1]);

	    TransformerFactory factory = TransformerFactory.newInstance();
	    Transformer transformer = factory.newTransformer(stylesource);

	    StreamResult result = new StreamResult(System.out);
	    transformer.transform(source, result);
	  }
}
