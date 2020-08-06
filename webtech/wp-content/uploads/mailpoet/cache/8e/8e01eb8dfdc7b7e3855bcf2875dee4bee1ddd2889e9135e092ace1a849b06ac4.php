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

/* woocommerce_list_import.html */
class __TwigTemplate_efb721cbcd2cc2629143c77e1f6dcc8c1b27f04d4ed065aab81caf8b2897417f extends \MailPoetVendor\Twig\Template
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
        $this->parent = $this->loadTemplate("layout.html", "woocommerce_list_import.html", 1);
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
        echo $this->extensions['MailPoet\Twig\I18n']->localize(["wooCommerceListImportTitle" => $this->extensions['MailPoet\Twig\I18n']->translateWithContext("WooCommerce customers now have their own list", "Title on the customers import page"), "wooCommerceListImportInfo1" => $this->extensions['MailPoet\Twig\I18n']->translate("MailPoet will create a list of your WooCommerce customers, even those who don’t have an account, known as \"Guests\"."), "wooCommerceListImportInfo2" => $this->extensions['MailPoet\Twig\I18n']->translate("New customers will be able to join this list during checkout. You can manage this new checkout feature in your MailPoet Settings."), "wooCommerceListImportInfo3" => $this->extensions['MailPoet\Twig\I18n']->translate("To begin, please choose how you want to populate your list:"), "wooCommerceListImportCheckboxSubscribed" => $this->extensions['MailPoet\Twig\I18n']->translate("<b>add and subscribe</b> all my customers to this list because they agreed to receive marketing emails from me"), "wooCommerceListImportCheckboxUnsubscribed" => $this->extensions['MailPoet\Twig\I18n']->translate("<b>add</b> all my customers to the list, but <b>as unsubscribed</b>. They can join this list next time they check out"), "wooCommerceListImportInfo4" => $this->extensions['MailPoet\Twig\I18n']->translate("Their subscription preference on other lists won’t be changed."), "wooCommerceListImportSubmit" => $this->extensions['MailPoet\Twig\I18n']->translateWithContext("Create my WooCommerce Customers list now!", "Submit button caption"), "unknownError" => $this->extensions['MailPoet\Twig\I18n']->translate("Unknown error")]);
        // line 24
        echo "
";
    }

    public function getTemplateName()
    {
        return "woocommerce_list_import.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  74 => 24,  72 => 14,  68 => 13,  58 => 6,  54 => 5,  51 => 4,  47 => 3,  36 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "woocommerce_list_import.html", "/var/www/html/wp-content/plugins/mailpoet/views/woocommerce_list_import.html");
    }
}
