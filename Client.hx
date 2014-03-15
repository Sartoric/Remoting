
package ;

import flash.display.Sprite;

class Client extends Sprite {


  static function display(v) {
    trace(v);
  }
  static public function main() :Void {
    var URL = "http://localhost/remoting.php/";
    var cnx = haxe.remoting.HttpAsyncConnection.urlConnect(URL);
    cnx.setErrorHandler( function(err) { trace("Error : "+Std.string(err)); } );
    cnx.Server.foo.call([1,2],display);
  }
}