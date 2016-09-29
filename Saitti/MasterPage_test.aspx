<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MasterPage_test.aspx.cs" Inherits="MasterPage_test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ford Mustang</title>
    <style>
        #logo
        {
            width:100%;
            height:auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="w3-container w3-purple">
        <h1>Ford Mustang - the Wild horse from america</h1>
        <p>The Ford Mustang is an american automobile manufactured by Ford</p>
    </div>
    <div class="w3-row-padding">
        <div class="w3-third w3-light-blue">
            <h2>General</h2>
            <p>The Mustang created the "pony car" class of American automobiles, affordable sporty coupes with long hoods and short rear decks and gave rise to competitors such as the Chevrolet Camaro, Pontiac Firebird, AMC Javelin, Chrysler's revamped Plymouth Barracuda, and the first generation Dodge Challenger. The Mustang is also credited for inspiring the designs of coupés such as the Toyota Celica and Ford Capri, which were imported to the United States.</p>
        </div>
        <div class="w3-third w3-light-grey">
            <h2>Followers</h2>
              <p>The Mustang created the "pony car" class of American automobiles, affordable sporty coupes with long hoods and short rear decks and gave rise to competitors such as the Chevrolet Camaro, Pontiac Firebird, AMC Javelin, Chrysler's revamped Plymouth Barracuda, and the first generation Dodge Challenger. The Mustang is also credited for inspiring the designs of coupés such as the Toyota Celica and Ford Capri, which were imported to the United States.</p>
        </div>
        <div class="w3-third">
            <img src="http://www.allfordmustangs.com/wordpress/wp-content/uploads/2016/08/16mustanggt-blackpackage_01_hr-2-1500x1000.jpg" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

