{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{block name='sitemap_item'}
  <div class="list-group list-group-flush list-group-collapse">
    {foreach $links as $link}

      {if isset($link.children) && $link.children|@count > 0}
        <div class="list-group-item list-group-item-action-dropdown">
          <a class="text-reset stretched-link" id="{$link.id}" href="{$link.url}" title="{$link.label}">
            {$link.label}
          </a>
        </div>
        {include file='cms/_partials/sitemap-nested-list.tpl' links=$link.children is_nested=true}
      {else}
        <a class="list-group-item list-group-item-action" id="{$link.id}" href="{$link.url}" title="{$link.label}">
          {$link.label}
        </a>
      {/if}

    {/foreach}
  </div>
{/block}
