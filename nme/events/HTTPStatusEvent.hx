package nme.events;
#if code_completion


extern class HTTPStatusEvent extends Event {
	@:require(flash10_1) var responseHeaders : Array<Dynamic>;
	@:require(flash10_1) var responseURL : String;
	var status(default,null) : Int;
	function new(type : String, bubbles : Bool = false, cancelable : Bool = false, status : Int = 0) : Void;
	@:require(flash10_1) static var HTTP_RESPONSE_STATUS : String;
	static var HTTP_STATUS : String;
}


#elseif (cpp || neko)
typedef IOErrorEvent = neash.events.IOErrorEvent;
#elseif js
typedef IOErrorEvent = jeash.events.IOErrorEvent;
#else
typedef IOErrorEvent = flash.events.IOErrorEvent;
#end