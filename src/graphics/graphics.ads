package graphics is

    type color_intensity is new Float range 0.0 .. 1.0;
    type RGB is record
        r : color_intensity;
        g : color_intensity;
        b : color_intensity;
    end record;

    type Image is array (Natural range <>, Natural range <>) of RGB;

    procedure stub;

end graphics;