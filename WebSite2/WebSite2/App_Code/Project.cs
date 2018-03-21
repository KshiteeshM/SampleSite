using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Project
/// </summary>
public class Project
{
    private string title;
    private string imageurl;
    private string description;
    private string projecturl;
    public string m_Title
    {
        get
        {
            return title;
        }
        set
        {
            title = value;
        }
    }
    public string m_Imageurl
    {
        get
        {
            return imageurl;
        }
        set
        {
            imageurl = value;
        }
    }
    public string m_Description
    {
        get
        {
            return description;
        }
        set
        {
            description = value;
        }
    }
    public string m_ProjectUrl
    {
        get
        {
            return projecturl;
        }
        set
        {
            projecturl = value;
        }
    }
    public Project(string title,string description,string projecturl)
    {
        //TODO: Add Logic and CSS for images for cards in ProjectCompilation.css
        m_Title = title;
        m_Description = description;
        m_ProjectUrl = projecturl;
    }
}