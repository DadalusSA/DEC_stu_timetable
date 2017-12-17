using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for human
/// </summary>
public class human// parents class /super class
{
    public string name { get; set; }
    public int age { get; set; }
    public string real_name { get; set; }
    public human()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public void run()
    {

    }

    public void play()
    {

    }

    public void throw_a_grenade()
    {

    }
    public void buying_a_weapon()
    {

    }
}

public class terrorist : human // child class/ derived class
{
    public string terrorist_name { get; set;
    }
    public terrorist()
    {
        name = "bilibala";
        throw_a_grenade();
        

    }

}

public class counter_terrorist : human // child class/ derived class
{
    public counter_terrorist()
    { }

}