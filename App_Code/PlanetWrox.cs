﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Genre
{
    public Genre()
    {
        this.Reviews = new HashSet<Review>();
    }

    public int Id { get; set; }
    public string Name { get; set; }
    public int SortOrder { get; set; }

    public virtual ICollection<Review> Reviews { get; set; }
}

public partial class PhotoAlbum
{
    public PhotoAlbum()
    {
        this.Pictures = new HashSet<Picture>();
    }

    public int Id { get; set; }
    public string Name { get; set; }

    public virtual ICollection<Picture> Pictures { get; set; }
}

public partial class Picture
{
    public int Id { get; set; }
    public string Description { get; set; }
    public string ToolTip { get; set; }
    public string ImageUrl { get; set; }
    public int PhotoAlbumId { get; set; }

    public virtual PhotoAlbum PhotoAlbum { get; set; }
}

public partial class Review
{
    public int Id { get; set; }
    public string Title { get; set; }
    public string Summary { get; set; }
    public string Body { get; set; }
    public int GenreId { get; set; }
    public Nullable<bool> Authorized { get; set; }
    public System.DateTime CreateDateTime { get; set; }
    public System.DateTime UpdateDateTime { get; set; }

    public virtual Genre Genre { get; set; }
}
