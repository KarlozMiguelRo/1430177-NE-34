<?php

use MailPoetVendor\Twig\Environment;
use MailPoetVendor\Twig\Error\LoaderError;
use MailPoetVendor\Twig\Error\RuntimeError;
use MailPoetVendor\Twig\Extension\SandboxExtension;
use MailPoetVendor\Twig\Markup;
use MailPoetVendor\Twig\Sandbox\SecurityError;
use MailPoetVendor\Twig\Sandbox\SecurityNotAllowedTagError;
use MailPoetVendor\Twig\Sandbox\SecurityNotAllowedFilterError;
use MailPoetVendor\Twig\Sandbox\SecurityNotAllowedFunctionError;
use MailPoetVendor\Twig\Source;
use MailPoetVendor\Twig\Template;

/* revenue_tracking_permission.html */
class __TwigTemplate_6626505c560bfc83f6d57b850ffc8da2caa429b2e76a686e289dfd9faa751df6 extends \MailPoetVendor\Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->blocks = [
            'content' => [$this, 'block_content'],
            'translations' => [$this, 'block_translations'],
        ];
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return "layout.html";
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        $this->parent = $this->loadTemplate("layout.html", "revenue_tracking_permission.html", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 4
        echo "<script>
  var mailpoet_logo_url = '";
        // line 5
        echo $this->extensions['MailPoet\Twig\Assets']->generateCdnUrl("welcome-wizard/mailpoet-logo.20190109-1400.png");
        echo "';
  var finish_wizard_url = '";
        // line 6
        echo \MailPoetVendor\twig_escape_filter($this->env, ($context["finish_wizard_url"] ?? null), "html", null, true);
        echo "';
</script>

<div id=\"mailpoet_wizard_container\"></div>

";
    }

    // line 13
    public function block_translations($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 14
        echo $this->extensions['MailPoet\Twig\I18n']->localize(["revenueTrackingInfo1" => $this->extensions['MailPoet\Twig\I18n']->translateWithContext("MailPoet can use browser cookies for more precise WooCommerce tracking.", "Browser cookies are data created by websites and stored in visitors web browser"), "revenueTrackingInfo2" => $this->extensions['MailPoet\Twig\I18n']->translateWithContext("This is practical for abandoned cart emails and when a customer uses several email addresses.", "“abandoned cart emails“ are emails which are sent automatically from e-commerce websites when a customer add a product to the cart and then leave the website"), "revenueTrackingAllow" => $this->extensions['MailPoet\Twig\I18n']->translateWithContext("Allow MailPoet cookies. My visitors are made aware that cookies are used on my website.", "“MailPoet cookies” and “cookies” are browser cookies created by MailPoet"), "revenueTrackingDontAllow" => $this->extensions['MailPoet\Twig\I18n']->translateWithContext("Don’t allow MailPoet cookies and rely on basic revenue tracking.", "“MailPoet cookies” are browser cookies created by MailPoet"), "revenueTrackingSubmit" => $this->extensions['MailPoet\Twig\I18n']->translateWithContext("Save", "Submit button caption")]);
        // line 20
        echo "
";
    }

    public function getTemplateName()
    {
        return "revenue_tracking_permission.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  74 => 20,  72 => 14,  68 => 13,  58 => 6,  54 => 5,  51 => 4,  47 => 3,  36 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "revenue_tracking_permission.html", "/var/www/html/wp-content/plugins/mailpoet/views/revenue_tracking_permission.html");
    }
}
