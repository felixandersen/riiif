require 'spec_helper'

describe Riiif::OpenseadragonHelper do

  it "should draw the viewer" do
    out = openseadragon_viewer('world')
    out.should == '<div id="openseadragon1"></div><script>
//<![CDATA[
        var viewer = OpenSeadragon({
            id: "openseadragon1",
            prefixUrl: "/assets/openseadragon/",
            tileSources:   [{
            "image_host":     "/image-service",
            "identifier":   "world",   
            "width":        800,   
            "height":       400,   
            "scale_factors": [1, 2, 3, 4, 5],   
            "tile_width":   1024,   
            "tile_height":  ,   
            "formats":      [ "jpg", "png" ],   
            "qualities":    ["native", "bitonal", "grey", "color"],   
            "profile":      "http://library.stanford.edu/iiif/image-api/compliance.html#level3"
          }]
        });

//]]>
</script>'
  end
end