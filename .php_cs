<?php

$header = <<<'EOF'
This file is part of <package name>.

This source file is subject to the license that is bundled
with this source code in the file LICENSE.
EOF;

Symfony\CS\Fixer\Contrib\HeaderCommentFixer::setHeader($header);

return Symfony\CS\Config\Config::create()
    ->level(Symfony\CS\FixerInterface::SYMFONY_LEVEL)
    ->fixers([
        'header_comment',
        'multiline_spaces_before_semicolon',
        'ordered_use',
        'phpdoc_order',
        'short_array_syntax',
    ])
    ->finder(
        Symfony\CS\Finder\DefaultFinder::create()
            ->exclude('bin')
            ->exclude('build')
            ->exclude('vendor')
            ->in(__DIR__)
    )
;
