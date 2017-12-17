using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.CSharp;
using Microsoft.CSharp.RuntimeBinder;



namespace PTPL
{
    /// <summary>
    /// Ok la this is my self d class
    /// </summary>
    public class Person
    {
        public int age = 0;
        public double pi = 3.14159;
        public string name = string.Empty;
        public string race = "";
        public DateTime dob { get; set; }
        private int _age = 0;

        public int myage
        {
            set
            {
                if (value < 0)
                {
                    _age = 0;
                }
                else
                {
                    _age = value;
                }
            }

            get
            {
                return _age;
            }
        }
        /// <summary>
        /// Ok la this is my constructor
        /// </summary>
        public Person()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public Person(int age, string name, string racesss, DateTime dobs)
        {
            this.age = age;
            this.name = name;
            this.race = racesss;
            this.dob = dobs;
        }

        public string getRace()
        {
            return this.race;
        }

        public int getAge()
        {
            return this.age;
        }

        public string getName()
        {
            return this.name;
        }
        public double getPiFormula(double radius)
        {
            return pi * radius * radius;
        }
       
    }
  

}