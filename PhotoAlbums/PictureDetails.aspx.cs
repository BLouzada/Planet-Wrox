using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class  PhotoAlbums_PictureDetails : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int pictureId = Convert.ToInt32(Request.QueryString.Get("Id"));
        using (PlanetWroxEntities myEntities = new PlanetWroxEntities()){
            string imgUrl = (from Picture in myEntities.Pictures
                             where Picture.Id == pictureId
                             select Picture).Single().ImageUrl;
            Image1.ImageUrl = imgUrl;
        }
    }
}