public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.willjacksonuk.hello-packaging",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate () {
        var label = new Gtk.Label (_("Hello Packaging"));
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Hello Packaging"
        };
        main_window.add (label);
        main_window.show_all ();
    }
    
    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
